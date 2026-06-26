categories_data = [
  { name: "Semua", label: "Semua", icon: "📚" },
  { name: "Fiksi", label: "Fiksi", icon: "📖" },
  { name: "Sejarah", label: "Sejarah", icon: "🏛️" },
  { name: "Pengembangan Diri", label: "Self-Help", icon: "🌱" },
  { name: "Fiksi Ilmiah", label: "Sci-Fi", icon: "🚀" },
  { name: "Filsafat", label: "Filsafat", icon: "🧠" },
  { name: "Roman", label: "Roman", icon: "💛" },
  { name: "Teknologi", label: "Teknologi", icon: "💻" }
]

categories_data.each do |cat|
  Category.find_or_create_by!(name: cat[:name]) do |c|
    c.label = cat[:label]
    c.icon = cat[:icon]
  end
end

books_data = [
  {
    title: "Laskar Pelangi",
    author: "Andrea Hirata",
    price: 85000,
    original_price: 110000,
    category_name: "Fiksi",
    cover: "https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=400&h=560&fit=crop",
    rating: 4.9,
    reviews: 2341,
    description: "Novel yang mengisahkan perjuangan anak-anak Belitung dalam menggapai mimpi di tengah keterbatasan. Kisah persahabatan, semangat, dan cinta terhadap pendidikan yang mengharukan.",
    pages: 529,
    publisher: "Bentang Pustaka",
    year: 2005,
    isbn: "978-979-1227-19-8",
    stock: 15,
    badge: "Bestseller"
  },
  {
    title: "Bumi Manusia",
    author: "Pramoedya Ananta Toer",
    price: 95000,
    original_price: 120000,
    category_name: "Sejarah",
    cover: "https://images.unsplash.com/photo-1512820790803-83ca734da794?w=400&h=560&fit=crop",
    rating: 4.8,
    reviews: 1892,
    description: "Kisah Minke, seorang pemuda Jawa yang terpesona oleh dunia Eropa, namun tersadar akan kenyataan pahit kolonialisme. Novel pertama dari tetralogi Pulau Buru yang monumental.",
    pages: 535,
    publisher: "Lentera Dipantara",
    year: 1980,
    isbn: "978-979-9023-14-5",
    stock: 8,
    badge: "Klasik"
  },
  {
    title: "Atomic Habits",
    author: "James Clear",
    price: 115000,
    original_price: 145000,
    category_name: "Pengembangan Diri",
    cover: "https://images.unsplash.com/photo-1589998059171-988d887df646?w=400&h=560&fit=crop",
    rating: 4.7,
    reviews: 3210,
    description: "Panduan praktis membangun kebiasaan baik dan menghancurkan kebiasaan buruk. James Clear mengurai ilmu di balik perubahan perilaku yang terbukti efektif.",
    pages: 320,
    publisher: "Gramedia Pustaka",
    year: 2019,
    isbn: "978-979-0800-45-2",
    stock: 22,
    badge: "Terlaris"
  },
  {
    title: "Dune",
    author: "Frank Herbert",
    price: 130000,
    original_price: 160000,
    category_name: "Fiksi Ilmiah",
    cover: "https://images.unsplash.com/photo-1506466010722-395aa2bef877?w=400&h=560&fit=crop",
    rating: 4.6,
    reviews: 987,
    description: "Epik sains-fiksi terbesar sepanjang masa. Di planet gurun Arrakis, Paul Atreides menemukan takdirnya sebagai pemimpin revolusi melawan penindasan galaksi.",
    pages: 688,
    publisher: "Bhuana Ilmu Populer",
    year: 1965,
    isbn: "978-979-0750-88-3",
    stock: 5,
    badge: "Pilihan Editor"
  },
  {
    title: "Filosofi Teras",
    author: "Henry Manampiring",
    price: 79000,
    original_price: 98000,
    category_name: "Filsafat",
    cover: "https://images.unsplash.com/photo-1481627834876-b7833e8f5570?w=400&h=560&fit=crop",
    rating: 4.8,
    reviews: 1567,
    description: "Ajaran Stoik Yunani-Romawi kuno yang relevan untuk menghadapi kecemasan, kesedihan, dan permasalahan hidup modern. Ditulis dengan gaya yang ringan dan mudah dicerna.",
    pages: 264,
    publisher: "Kompas",
    year: 2018,
    isbn: "978-602-4120-33-7",
    stock: 18,
    badge: "Favorit"
  },
  {
    title: "The Alchemist",
    author: "Paulo Coelho",
    price: 88000,
    original_price: 108000,
    category_name: "Fiksi",
    cover: "https://images.unsplash.com/photo-1524578271613-d550eacf6090?w=400&h=560&fit=crop",
    rating: 4.5,
    reviews: 2109,
    description: "Perjalanan Santiago, seorang gembala Spanyol, dalam mengejar impiannya melintasi gurun Sahara. Kisah tentang keberanian mengikuti hati nurani dan menemukan takdir sejati.",
    pages: 208,
    publisher: "Gramedia Pustaka",
    year: 1988,
    isbn: "978-979-2271-88-4",
    stock: 12,
    badge: nil
  },
  {
    title: "Clean Code",
    author: "Robert C. Martin",
    price: 145000,
    original_price: 185000,
    category_name: "Teknologi",
    cover: "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=400&h=560&fit=crop",
    rating: 4.7,
    reviews: 876,
    description: "Panduan menulis kode yang bersih, elegan, dan mudah dipelihara. Robert Martin berbagi prinsip, pola, dan praktik yang digunakan programmer profesional terbaik dunia.",
    pages: 464,
    publisher: "Elex Media",
    year: 2008,
    isbn: "978-602-0419-62-1",
    stock: 9,
    badge: "Dev Pick"
  },
  {
    title: "Sapiens",
    author: "Yuval Noah Harari",
    price: 125000,
    original_price: 155000,
    category_name: "Sejarah",
    cover: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=560&fit=crop",
    rating: 4.6,
    reviews: 1433,
    description: "Sejarah singkat umat manusia dari zaman batu hingga era modern. Harari mengajak pembaca merenungkan hakikat kemanusiaan dengan perspektif yang mengubah cara pandang.",
    pages: 513,
    publisher: "KPG",
    year: 2011,
    isbn: "978-979-9108-52-3",
    stock: 14,
    badge: nil
  },
  {
    title: "Perahu Kertas",
    author: "Dee Lestari",
    price: 72000,
    original_price: 89000,
    category_name: "Roman",
    cover: "https://images.unsplash.com/photo-1519682337058-a94d519337bc?w=400&h=560&fit=crop",
    rating: 4.7,
    reviews: 1789,
    description: "Kisah cinta Kugy dan Keenan yang terpisah oleh takdir namun disatukan kembali oleh waktu. Novel romansa yang penuh metafora indah tentang mimpi dan cinta.",
    pages: 444,
    publisher: "Bentang Pustaka",
    year: 2009,
    isbn: "978-979-1227-55-6",
    stock: 20,
    badge: nil
  },
  {
    title: "Homo Deus",
    author: "Yuval Noah Harari",
    price: 128000,
    original_price: 158000,
    category_name: "Filsafat",
    cover: "https://images.unsplash.com/photo-1495446815901-a7297e633e8d?w=400&h=560&fit=crop",
    rating: 4.5,
    reviews: 892,
    description: "Melanjutkan Sapiens, Harari mengeksplorasi masa depan umat manusia: keabadian, kebahagiaan buatan, dan potensi manusia menjadi tuhan di abad ke-21.",
    pages: 450,
    publisher: "KPG",
    year: 2015,
    isbn: "978-979-9108-68-4",
    stock: 7,
    badge: nil
  },
  {
    title: "The Psychology of Money",
    author: "Morgan Housel",
    price: 98000,
    original_price: 125000,
    category_name: "Pengembangan Diri",
    cover: "https://images.unsplash.com/photo-1553729459-efe14ef6055d?w=400&h=560&fit=crop",
    rating: 4.8,
    reviews: 2045,
    description: "19 kisah tentang cara orang berpikir tentang uang — dan bagaimana berpikir lebih baik. Buku wajib baca bagi siapa pun yang ingin memahami hubungan antara psikologi dan keuangan.",
    pages: 256,
    publisher: "Gramedia",
    year: 2020,
    isbn: "978-979-0800-91-9",
    stock: 16,
    badge: "Baru"
  }
]

books_data.each do |book_data|
  category_name = book_data.delete(:category_name)
  category = Category.find_by(name: category_name)
  
  Book.find_or_create_by!(title: book_data[:title]) do |b|
    b.author = book_data[:author]
    b.price = book_data[:price]
    b.original_price = book_data[:original_price]
    b.cover = book_data[:cover]
    b.rating = book_data[:rating]
    b.reviews = book_data[:reviews]
    b.description = book_data[:description]
    b.pages = book_data[:pages]
    b.publisher = book_data[:publisher]
    b.year = book_data[:year]
    b.isbn = book_data[:isbn]
    b.stock = book_data[:stock]
    b.badge = book_data[:badge]
    b.category = category
  end
end

puts "Seeding completed: #{Category.count} categories, #{Book.count} books."
