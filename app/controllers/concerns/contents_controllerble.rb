module ContentsControllerble
  extend ActiveSupport::Concern

  included do
    def index
      @contents = content_model.all
    end

    private

    def content_model
      # コントローラのネームスペースを取得し、モデルクラスを生成
      namespace = self.class.name.deconstantize
      "#{namespace}::Content".constantize
    end
  end
end
