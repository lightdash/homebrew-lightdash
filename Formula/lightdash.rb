class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2997.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2997.2/lightdash-cli-0.2997.2-macos-arm64.tar.gz"
      sha256 "69d504dd0bbe3e7d66e71bd6a9f1789daf329a26bc61a5f47005c5b40907e9b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2997.2/lightdash-cli-0.2997.2-macos-x64.tar.gz"
      sha256 "58bc75bbaa1cf6b94392541f7a33ef7ab81d42f905bbd558d1d3443d8b5b5ca3"
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
