class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2904.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.3/lightdash-cli-0.2904.3-macos-arm64.tar.gz"
      sha256 "d0635001f485c109b53b3e2b018fff318d818eae9970808a375867513ae2b0f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2904.3/lightdash-cli-0.2904.3-macos-x64.tar.gz"
      sha256 "a6bc62542cf1ba4a3029257c41ceda305779bbb62780b24672a019c206f2da7e"
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
