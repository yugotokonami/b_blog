class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '文学・評論' },
    { id: 3, name: 'ノンフィクション' },
    { id: 4, name: 'ビジネス・経済' },
    { id: 5, name: '歴史・地理' },
    { id: 6, name: '政治・社会' },
    { id: 7, name: '美術' },
    { id: 8, name: '人文・思想・宗教' },
    { id: 9, name: '暮らし・健康・料理' },
    { id: 10, name: 'サイエンス・テクノロジー' },
    { id: 11, name: '趣味・実用' },
    { id: 12, name: '教育・自己啓発' },
    { id: 13, name: 'スポーツ・アウトドア' },
    { id: 14, name: '音楽' },
    { id: 15, name: 'コミックス' }
  ]

  include ActiveHash::Associations
  has_many :articles

end