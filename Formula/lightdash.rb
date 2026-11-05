class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.166.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.0/lightdash-cli-3.166.0-macos-arm64.tar.gz"
      sha256 "282de203e566959e0c3394094a5094f7e67e3ab75e6a30b3cedff4e993b8ec00"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.0/lightdash-cli-3.166.0-macos-x64.tar.gz"
      sha256 "249a259b4b10690ab750f5f5274609abbf2b6248065a8e1c9be3a7396b68916e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.166.0/lightdash-cli-3.166.0-linux-x64.tar.gz"
    sha256 "312f2fe84ff7d5c07315125891f2b81dc78426f04f51478aded46f98a854e5ce"

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
