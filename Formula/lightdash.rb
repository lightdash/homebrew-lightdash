class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.136.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.136.3/lightdash-cli-2.136.3-macos-arm64.tar.gz"
      sha256 "1784a7bba8c1194c511d5400534cbae1cf5158fa04726de7a500fa32aecdef45"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.136.3/lightdash-cli-2.136.3-macos-x64.tar.gz"
      sha256 "a4178367c187ecc6679bffdc83a29e8098c96883a2af9b516ab53665544506db"
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
