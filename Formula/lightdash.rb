class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2780.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2780.1/lightdash-cli-0.2780.1-macos-arm64.tar.gz"
      sha256 "6e188d86cf01b0608a8e1ddf983b0672f59415ee263e41175572463bd202262a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2780.1/lightdash-cli-0.2780.1-macos-x64.tar.gz"
      sha256 "8fbf2a27d9e8edef8c1ffbe6e00098be0dba756134c7c5edea31cefa7c6ed55b"
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
