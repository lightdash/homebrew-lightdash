class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.146.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.2/lightdash-cli-1.146.2-macos-arm64.tar.gz"
      sha256 "2a70e43480f722702f85c869bd7228a2eac4fa187bfdb668eb271f3301118604"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.2/lightdash-cli-1.146.2-macos-x64.tar.gz"
      sha256 "e6a2341118cb482ae45be45874e3151fa1f4fca5e8e9caa49d6f5a0308755548"
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
