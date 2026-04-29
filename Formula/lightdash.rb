class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2845.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2845.0/lightdash-cli-0.2845.0-macos-arm64.tar.gz"
      sha256 "6228a09a3614a3df5aaeebe4b13cc54c4b835c1def37aef22923458cac2e4edf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2845.0/lightdash-cli-0.2845.0-macos-x64.tar.gz"
      sha256 "74e6abdd05371f0e5258e5d1172781cb97b192eeb2fe078a77abd155cab0f98a"
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
