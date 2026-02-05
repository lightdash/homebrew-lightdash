class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2429.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2429.0/lightdash-cli-0.2429.0-macos-arm64.tar.gz"
      sha256 "ac65f21784fb4269e47cfb8bfbf6dd522c91bb92fa584d8831df5641fee616f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2429.0/lightdash-cli-0.2429.0-macos-x64.tar.gz"
      sha256 "15056a71228c3b5723d5c04dee04b479e3f58f45f50a34a2eea29191f47af202"
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
