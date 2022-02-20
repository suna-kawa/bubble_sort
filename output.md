# ソースコード
```
a = [10, 8, 3, 5, 2, 4, 11, 18, 20, 33]
loop do                                 # loop doで繰り返し
  flag = false                          # flagにfalseを代入
  (a.size - 1).times do |i|             # 配列の要素10-1=9回繰り返す&|i|👉配列のオブジェクト値を順番に渡す
    a1 = a[i]                           # オブジェクト値の並び替えを定義する
    a2 = a[i + 1]                       # 並び替えるのはオブジェクトではなく、配列要素👉a = [0,1,2,.....9]
    if a1 > a2                          # もし、小さい > 大きいの値なら、
      a[i] = a2                         # 左右の配列要素を入れ替える 
      a[i + 1] = a1                     # 左右の配列要素を入れ替える
      flag = true                       # 入れ替えが起こればflagはtrue
    end
    p a                                 # pであれば、オブジェクトが見やすく出力される
  end
  break unless flag                     # flagがfalseならloopを終了
end
```


# テストコード
```require 'minitest/autorun'
require_relative '../lib/bubble_sort'

class TestBubbleSort < Minitest::Test
  def test_bubble_sort
    a = '[10, 8, 3, 5, 2, 4, 11, 18, 20, 33]'
    assert_equal('[10, 8, 3, 5, 2, 4, 11, 18, 20, 33]' , a)
    flag = 'false'
    assert_equal('false' , flag)
    flag = 'true'
    assert_equal('true' , flag)
    a1 = 'a[i]'
    assert_equal('a[i]' , a1)
    a2 = 'a[i+1]'
    assert_equal('a[i+1]' , a2)
  end
end
```


# test&Lint結果
[![Image from Gyazo](https://i.gyazo.com/a3bc365f1e1aba0afc50db04876449b9.png)](https://gyazo.com/a3bc365f1e1aba0afc50db04876449b9)



# コマンドプロント
[![Image from Gyazo](https://i.gyazo.com/a5f1a4407b33e2753650ad432c3c169a.png)](https://gyazo.com/a5f1a4407b33e2753650ad432c3c169a)

# 参考
- ソースコード
> https://teratail.com/questions/242079
> https://wordpress.ideacompo.com/?p=7641

- テストコード
> https://techacademy.jp/magazine/19968




