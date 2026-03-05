class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2572.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2572.2/lightdash-cli-0.2572.2-macos-arm64.tar.gz"
      sha256 "f69d628864e56d159433668bd3eee885aa433bb66f7374ddff43ee9f9bd7454b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2572.2/lightdash-cli-0.2572.2-macos-x64.tar.gz"
      sha256 "cf488d14a6e860566004fc0dec7df51148e199a6f086c50b5636f0e990c7aa56"
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
