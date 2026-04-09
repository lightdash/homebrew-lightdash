class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2740.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.5/lightdash-cli-0.2740.5-macos-arm64.tar.gz"
      sha256 "df297f4cdb6f4890a9edf3c6e198f164a56721aa0c5a3af83a6bfdd8a3b5f703"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.5/lightdash-cli-0.2740.5-macos-x64.tar.gz"
      sha256 "04fb7341c0685af524cc8dba1476935a9aa9a759534489365f40cf4772d0db40"
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
