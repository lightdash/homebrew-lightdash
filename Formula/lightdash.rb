class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3372.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3372.0/lightdash-cli-0.3372.0-macos-arm64.tar.gz"
      sha256 "950800c12465855ac590b587b6a672c6617a4a168b2a03ce9d3519fc73e4646b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3372.0/lightdash-cli-0.3372.0-macos-x64.tar.gz"
      sha256 "bdb63647fda0b8b90700a11d33015a98c9591d73d4a4239da14761addfbd4536"
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
