class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3309.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3309.1/lightdash-cli-0.3309.1-macos-arm64.tar.gz"
      sha256 "78d048b036ac7a3943905deb18f99b7fcb9799303b9e3b059a81dd493fa6f78b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3309.1/lightdash-cli-0.3309.1-macos-x64.tar.gz"
      sha256 "49edda8a7afedbde51172faa091beca0f7fd45b1f87b59fd61ccb868d375bdb3"
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
