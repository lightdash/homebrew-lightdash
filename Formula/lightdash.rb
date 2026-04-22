class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2783.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2783.1/lightdash-cli-0.2783.1-macos-arm64.tar.gz"
      sha256 "736047c0ca971ab57d09bea3bde09c3508c85175493455f4a84fed57b478a42a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2783.1/lightdash-cli-0.2783.1-macos-x64.tar.gz"
      sha256 "1542647c018f9f3a633e296d5778777453c755ead482b3b4317a3fe00acb75ef"
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
