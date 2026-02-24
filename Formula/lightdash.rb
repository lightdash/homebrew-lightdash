class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2515.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2515.0/lightdash-cli-0.2515.0-macos-arm64.tar.gz"
      sha256 "d3f7eef58c7bd35faf356a56f484d541cd62c2f7cd4be7cfefcb1fa3695e200d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2515.0/lightdash-cli-0.2515.0-macos-x64.tar.gz"
      sha256 "8fcf8b698867ffb1525bbf9711b3628e6624fa9fcc5aae083a9fe6ee6badcf98"
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
