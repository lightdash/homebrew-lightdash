class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.388.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.388.0/lightdash-cli-2.388.0-macos-arm64.tar.gz"
      sha256 "79d3676f0000e642d26d090bf1417664e78652892430058838e17400af29804f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.388.0/lightdash-cli-2.388.0-macos-x64.tar.gz"
      sha256 "14c388b5dfcfada4c6dd09d1a73a297c06593be7998209d51641c0f58a51e9be"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.388.0/lightdash-cli-2.388.0-linux-x64.tar.gz"
    sha256 "6ef9f9a2353af15086986edb0afb8c893e38d56c14454580566abe0b4beb82fa"

    depends_on arch: :x86_64
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
