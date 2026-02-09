class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2443.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2443.0/lightdash-cli-0.2443.0-macos-arm64.tar.gz"
      sha256 "de0a16fe36e368472edd454e07d5843622d38875c9720f6f71f4af618efef5ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2443.0/lightdash-cli-0.2443.0-macos-x64.tar.gz"
      sha256 "9f5d6a3e6a179e9479cfb0f43b3608a64c6c4b8f89f17246474d44bfdb50c62c"
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
