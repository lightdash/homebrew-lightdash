class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2803.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2803.1/lightdash-cli-0.2803.1-macos-arm64.tar.gz"
      sha256 "cbf3599117c64f5d566f363fb35da8b83578bfbebd48f97768333afc1999e585"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2803.1/lightdash-cli-0.2803.1-macos-x64.tar.gz"
      sha256 "6dd2e362762f1456a9cab8f1978cf5a87cba2167e2785fd2fc1384cca946735d"
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
