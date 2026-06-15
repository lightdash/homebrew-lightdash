class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3167.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3167.0/lightdash-cli-0.3167.0-macos-arm64.tar.gz"
      sha256 "b8b5d4b7ed828cf5af82cf706a746150bc765412d6f665d7842f7cf868f268c5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3167.0/lightdash-cli-0.3167.0-macos-x64.tar.gz"
      sha256 "49954032b1f5e909bbd1db3e56e70583d1fb646399621d7f45c485584059facd"
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
