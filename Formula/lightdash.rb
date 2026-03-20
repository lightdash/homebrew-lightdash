class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2647.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2647.0/lightdash-cli-0.2647.0-macos-arm64.tar.gz"
      sha256 "5da8996ca3c8ac5b3a9ea72a56c37cf87815a85a782ec44ba38d050fbcfacef3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2647.0/lightdash-cli-0.2647.0-macos-x64.tar.gz"
      sha256 "77a571a53a06fc039aa5788b629316ea8bb019ac2300201b68c58ce4914c75a0"
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
