module ApplicationHelper

  # 選択中のサイドメニューのクラスを返す
  def sidebar_activate(sidebar_link_url)
    current_url = request.headers['PATH_INFO']
    if current_url.match(sidebar_link_url)
      ' class="active"'
    else
      ''
    end
  end

  # サイドメニューの項目を出力する
  def sidebar_list_items
    items = [
        {:text => '商品登録', :path => new_item_path},
        {:text => '商品一覧表', :path => items_path}
    ]

    html = ''
    html = html + %Q(<li><span class="glyphicon glyphicon-tag" style="margin-left:5px;"><b>商品</b></span></li><br>)
    items.each do |item|
      text = item[:text]
      path = item[:path]
      html = html + %Q(<li><a href="#{path}">#{text}</a></li>)
    end
    html = html + %Q(<hr>)
    html = html + %Q(<li><span class="glyphicon glyphicon-cog" style="margin-left:5px;"><b>仕様項目</b></span></li><br>)

    admin_items = [
        {:text => 'カラー', :path => colors_path},
        {:text => '外部端子', :path => contacts_path}
    ]

    admin_items.each do |item|
      text = item[:text]
      path = item[:path]
      html = html + %Q(<li><a href="#{path}">#{text}</a></li>)
    end

    raw(html)
  end

end
