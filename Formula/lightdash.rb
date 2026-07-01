class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3277.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3277.1/lightdash-cli-0.3277.1-macos-arm64.tar.gz"
      sha256 "a50af4388ae8947804b83ed9b8373555898a05622473675fc990dd7b536b8600"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3277.1/lightdash-cli-0.3277.1-macos-x64.tar.gz"
      sha256 "7a9afe03a68bb9b694203c8ef6ea414c58f3b2f44f331676db56c656574fb7c6"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
