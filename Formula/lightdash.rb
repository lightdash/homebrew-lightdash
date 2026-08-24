class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.242.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.1/lightdash-cli-1.242.1-macos-arm64.tar.gz"
      sha256 "5b53ceffc4d9b60f84a9f9808d1a16db955a59e8ec777105a23410169779d62e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.1/lightdash-cli-1.242.1-macos-x64.tar.gz"
      sha256 "280090b958098737b4445da2206f4b9f35ec8eb07ad216fe912461064c65732f"
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
