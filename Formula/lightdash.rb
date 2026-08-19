class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.4/lightdash-cli-1.202.4-macos-arm64.tar.gz"
      sha256 "23d820d5d5cbb8f4ab65bfbba06abb6b308f85b32912b22e4098f793c3ee3340"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.4/lightdash-cli-1.202.4-macos-x64.tar.gz"
      sha256 "0051627cde2c3f559ea3973904756245724607c44ebbc981e92ca894dfa5909f"
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
