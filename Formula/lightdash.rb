class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3484.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3484.1/lightdash-cli-0.3484.1-macos-arm64.tar.gz"
      sha256 "fb507b18bbf6229255360d1308484e43688ef44d2737954864262adc96e6b202"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3484.1/lightdash-cli-0.3484.1-macos-x64.tar.gz"
      sha256 "bf44e3b4405bff56f406d85889260a469bd24c544871eed80756f171e259e13c"
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
