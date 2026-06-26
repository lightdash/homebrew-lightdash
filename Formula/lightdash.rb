class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3258.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3258.0/lightdash-cli-0.3258.0-macos-arm64.tar.gz"
      sha256 "9b31ac475bb134ffef3b08c001026276e117e638238263cbca8108092c3b27a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3258.0/lightdash-cli-0.3258.0-macos-x64.tar.gz"
      sha256 "9f2bfbf2f9f677bbead8164ddf2a36a23ad2790e7772d136c44bf98a2ba32f1e"
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
