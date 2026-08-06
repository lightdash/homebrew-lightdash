class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.95.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.95.0/lightdash-cli-1.95.0-macos-arm64.tar.gz"
      sha256 "496e7f7aeda9b93f8d85605b1a310d9e6d45ec5af408bc99f2638a35702ad39f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.95.0/lightdash-cli-1.95.0-macos-x64.tar.gz"
      sha256 "8b24f1cdb46b8bde12c28fa78f26611f101d5001ba1e19872346460a6fa9f46a"
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
