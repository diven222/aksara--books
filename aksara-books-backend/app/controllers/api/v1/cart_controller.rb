class Api::V1::CartController < ApplicationController
  before_action :authorized

  def show
    cart = current_user.cart || Cart.create(user: current_user)
    render json: cart.cart_items.as_json(include: :book)
  end

  def add_item
    cart = current_user.cart || Cart.create(user: current_user)
    book_id = params[:book_id]
    quantity = params[:quantity] || 1

    cart_item = cart.cart_items.find_by(book_id: book_id)

    if cart_item
      cart_item.update(quantity: cart_item.quantity + quantity.to_i)
    else
      cart_item = cart.cart_items.create(book_id: book_id, quantity: quantity)
    end

    if cart_item.persisted?
      render json: cart_item.as_json(include: :book), status: :ok
    else
      render json: { error: 'Gagal menambahkan buku ke keranjang' }, status: :unprocessable_entity
    end
  end

  def update_item
    cart = current_user.cart
    cart_item = cart.cart_items.find_by(id: params[:id])

    if cart_item
      if cart_item.update(quantity: params[:quantity])
        render json: cart_item.as_json(include: :book), status: :ok
      else
        render json: { error: 'Gagal memperbarui keranjang' }, status: :unprocessable_entity
      end
    else
      render json: { error: 'Item tidak ditemukan' }, status: :not_found
    end
  end

  def remove_item
    cart = current_user.cart
    cart_item = cart.cart_items.find_by(id: params[:id])

    if cart_item
      cart_item.destroy
      render json: { message: 'Buku dihapus dari keranjang' }, status: :ok
    else
      render json: { error: 'Item tidak ditemukan' }, status: :not_found
    end
  end
end
