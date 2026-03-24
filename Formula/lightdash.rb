class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2657.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.3/lightdash-cli-0.2657.3-macos-arm64.tar.gz"
      sha256 "e1e56f7c0e5df0d35abbd1f2b55d784d6ed905c854d9c48432922751b24a8975"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.3/lightdash-cli-0.2657.3-macos-x64.tar.gz"
      sha256 "00726472c5a9fcbf97cc3913abc852a2de05c8e512c133f96f7af7be6b147aab"
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
