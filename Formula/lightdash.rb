class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2199.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2199.2/lightdash-cli-0.2199.2-macos-arm64.tar.gz"
      sha256 "28618a9ac18e1594d84f31f45928e97c780f8687d003faae75ba2f6b658f3053"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2199.2/lightdash-cli-0.2199.2-macos-x64.tar.gz"
      sha256 "5dbfdd2f829d4fc97800cacb953d972e7c2a7fab6396317afa2214fc0e340730"
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
