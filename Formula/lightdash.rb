class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2442.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2442.0/lightdash-cli-0.2442.0-macos-arm64.tar.gz"
      sha256 "f815bc0bca77bd06beb4af6a926f9fdeefe199d3390e135c200013f52308bf55"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2442.0/lightdash-cli-0.2442.0-macos-x64.tar.gz"
      sha256 "024b2ac8562d4fc72ca602a30dff91325e60f1c70d7c91df01af0d32a820be7d"
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
