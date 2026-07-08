class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3334.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3334.1/lightdash-cli-0.3334.1-macos-arm64.tar.gz"
      sha256 "93ac46d2a9c6e014b5007f4a743058d1dcf0f5b948165e5d718620b58ef04c93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3334.1/lightdash-cli-0.3334.1-macos-x64.tar.gz"
      sha256 "e2ec2f6ea324337873ba96fc41ae5084f8e50c14ba46ab2f4f18fadf16d45472"
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
