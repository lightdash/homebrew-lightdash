class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2199.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2199.1/lightdash-cli-0.2199.1-macos-arm64.tar.gz"
      sha256 "69346990ba917727b0c1cccfde578311792b35c229723b7bc58db4c7d73bb317"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2199.1/lightdash-cli-0.2199.1-macos-x64.tar.gz"
      sha256 "5b76b1d6897d4287ba6e86d202bfe415d9ea03e22519f15c1c139f00c35818c0"
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
