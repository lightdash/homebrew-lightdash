class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.6/lightdash-cli-1.202.6-macos-arm64.tar.gz"
      sha256 "22b182e9d15f70fd59454740a02f05c569039cae7601da4406c7eb70d478322d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.6/lightdash-cli-1.202.6-macos-x64.tar.gz"
      sha256 "843d277bb8b3eca00c8fc92fb7e3319eb02bb0be4a87fa7275f8ccfc5dfecf85"
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
