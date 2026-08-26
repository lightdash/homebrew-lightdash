class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.5.1/lightdash-cli-2.5.1-macos-arm64.tar.gz"
      sha256 "23a49e2e546041228bfd51985180868d5eb67d8c89bf5608d096a26aa5ca333f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.5.1/lightdash-cli-2.5.1-macos-x64.tar.gz"
      sha256 "29d5861881216bb97db60bc42f0ca1ff4e42a33da167d56c49f7879e12c7956e"
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
