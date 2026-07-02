class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3294.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3294.0/lightdash-cli-0.3294.0-macos-arm64.tar.gz"
      sha256 "07e0e525328d48a5b1ed426053f194675dbc7f5e1339beacfeacc6f8ebf487c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3294.0/lightdash-cli-0.3294.0-macos-x64.tar.gz"
      sha256 "114f33517c99a607622ed795dd0c21d365acc29ae6079818a75930917cfd2e86"
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
