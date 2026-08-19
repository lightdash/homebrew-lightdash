class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.11/lightdash-cli-1.202.11-macos-arm64.tar.gz"
      sha256 "4612f86ad473db308b35b92b6da134e20be27bb7a3cb24dffe6c965496963d3a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.11/lightdash-cli-1.202.11-macos-x64.tar.gz"
      sha256 "866506e171d80fbd823a3235a9d2ba6a416e334f40b6a9df8fc0b15d20b3f36e"
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
