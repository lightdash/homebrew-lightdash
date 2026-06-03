class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3087.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3087.1/lightdash-cli-0.3087.1-macos-arm64.tar.gz"
      sha256 "0e0fd62428fb12177d5daf5e118599c13b4dcd49f80b5c899b881e679038e12d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3087.1/lightdash-cli-0.3087.1-macos-x64.tar.gz"
      sha256 "7e79684cda9f039b73b2188a5f657112f19bd083cdfa9f978e2aa639fa541ba3"
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
