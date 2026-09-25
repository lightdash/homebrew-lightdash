class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.346.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.346.0/lightdash-cli-2.346.0-macos-arm64.tar.gz"
      sha256 "e23ffd4d04e30572f38494090822d08cb36fdf0f17263345960ae75e13101c88"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.346.0/lightdash-cli-2.346.0-macos-x64.tar.gz"
      sha256 "fe0197ea7d8111d46e586ae273abc2a9e1dcb834f2cb0c5df1c4c039f54891d3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.346.0/lightdash-cli-2.346.0-linux-x64.tar.gz"
    sha256 "be03a80a254a45c07b95a5093caf5ab585ccff912bb6030bc126d23240440724"

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
