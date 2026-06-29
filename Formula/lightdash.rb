class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3260.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3260.1/lightdash-cli-0.3260.1-macos-arm64.tar.gz"
      sha256 "b8ccf7f5a25d394dc65aa464ea6e8e0477d66a06125cd7fbdeff4dd64351eb48"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3260.1/lightdash-cli-0.3260.1-macos-x64.tar.gz"
      sha256 "e8c80a79d0d871d9d56bce9c743c221374c0730531600095bc2419c314280b98"
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
