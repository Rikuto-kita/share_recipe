class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '和食、日本料理' },
    { id: 3, name: '中華' },
    { id: 4, name: 'イタリアン' },
    { id: 5, name: 'フレンチ' },
    { id: 6, name: 'エスニック' },
    { id: 7, name: '揚げ物' },
    { id: 8, name: '煮物' },
    { id: 9, name: '鍋' },
    { id: 10, name: '粉物' },
    { id: 11, name: '野菜料理'},
    { id: 12, name: '魚料理' },
    { id: 13, name: '肉料理' },
    { id: 14, name: 'サラダ' },
    { id: 15, name: 'スイーツ' },
    { id: 16, name: 'その他' }
  ]
end
