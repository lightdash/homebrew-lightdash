class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.277.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.277.1/lightdash-cli-2.277.1-macos-arm64.tar.gz"
      sha256 "e9e23ea6010479d2d088aa2729b992b148a5caac8f29ba111438fe03257aa3ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.277.1/lightdash-cli-2.277.1-macos-x64.tar.gz"
      sha256 "063f1c5d09d77b6fc3c7d6909d98b3633e5e11a4db5a194d3c1be694f4878914"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.277.1/lightdash-cli-2.277.1-linux-x64.tar.gz"
      sha256 "f590edb11df2a9724efd7d74ca35e11ef673ccf8feb858e46fd0b22e69a5e915"
    end
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
