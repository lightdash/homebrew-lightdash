class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2728.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2728.3/lightdash-cli-0.2728.3-macos-arm64.tar.gz"
      sha256 "17c31d519f1ced1eaa25e72eccb34ce6f03442dea5ad459566cc6c322fd091fc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2728.3/lightdash-cli-0.2728.3-macos-x64.tar.gz"
      sha256 "ae5ad43c5707d0995ac307ff313c6de6d9e624d39a337af78c6c1a8897986870"
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
