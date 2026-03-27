class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2678.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2678.0/lightdash-cli-0.2678.0-macos-arm64.tar.gz"
      sha256 "754b9d83a930b4fc42c70777fad2b81063e3b8777c152c354c6e2df717c34131"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2678.0/lightdash-cli-0.2678.0-macos-x64.tar.gz"
      sha256 "2fbddbf73f972c3185e9ae7cc51d81d75029a86cad5d11c7a40f4f8f9c058228"
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
