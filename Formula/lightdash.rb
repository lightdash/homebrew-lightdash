class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2506.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2506.2/lightdash-cli-0.2506.2-macos-arm64.tar.gz"
      sha256 "1e8bcfc2b926b12cda3355a76940a8fae86047ef44fd2566d17ee6042ec6c294"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2506.2/lightdash-cli-0.2506.2-macos-x64.tar.gz"
      sha256 "08a0cc5a1ee1daaf0cc643ed34d5c50d77d4f63b474d4d4d624f51d9cdf8cc41"
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
