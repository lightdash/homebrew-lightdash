class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2310.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2310.0/lightdash-cli-0.2310.0-macos-arm64.tar.gz"
      sha256 "f7c318e3b1d66e2eae9229a881ffdaa9d8c5e3469f9e9ba5ffbbe7dd1fe25a91"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2310.0/lightdash-cli-0.2310.0-macos-x64.tar.gz"
      sha256 "1870189d24dd36b73cd95eddde5a922b4afcc1d3adf4e9ef5e6a32aee86a198e"
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
