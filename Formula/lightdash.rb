class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.89.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.89.3/lightdash-cli-2.89.3-macos-arm64.tar.gz"
      sha256 "12dbeac7073fdd29d8ae83b73d9f92ab4de32d400c50892e349dd3b80effbc7f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.89.3/lightdash-cli-2.89.3-macos-x64.tar.gz"
      sha256 "85a46bf611d5a39411a38e637eb58b51838382b1e7440d93a03b35ad813c6775"
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
