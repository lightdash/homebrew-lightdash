class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2759.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2759.4/lightdash-cli-0.2759.4-macos-arm64.tar.gz"
      sha256 "43244bfa79fe97a8aa9c5cb9fd09b276845f7dd4c6e880e39a4b2b6f9e71815c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2759.4/lightdash-cli-0.2759.4-macos-x64.tar.gz"
      sha256 "06154b5f4399cc104a4d3bbe7944298b79992e86d4b382ffd6712c6f7a48bab5"
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
