class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2536.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2536.2/lightdash-cli-0.2536.2-macos-arm64.tar.gz"
      sha256 "9c10f826c6e72e9b08a0ac185f8c72a0e6fce374fa4d7dfae63e98251aa69455"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2536.2/lightdash-cli-0.2536.2-macos-x64.tar.gz"
      sha256 "d34b0dcc143a25baa822f40fc2b41f5863a509c02cd6d9e7a6b0d72892151067"
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
