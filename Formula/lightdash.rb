class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2822.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2822.1/lightdash-cli-0.2822.1-macos-arm64.tar.gz"
      sha256 "372f2b9e3b81df03a62dd19b95894eb5a1798e2355c30c1e7802259e803a4eb9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2822.1/lightdash-cli-0.2822.1-macos-x64.tar.gz"
      sha256 "b86d881f138e921a8f44fe69cf00b6c02a80860ce075e3c230518e0b7bf7d900"
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
