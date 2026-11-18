class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.321.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.321.0/lightdash-cli-3.321.0-macos-arm64.tar.gz"
      sha256 "a3869afe47a20859e506731913e9eb9376ef63ef4170fee675f455fdc3229ba6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.321.0/lightdash-cli-3.321.0-macos-x64.tar.gz"
      sha256 "8c3e9c3f6a2d74c2e23abdfa244710201fcf4b0caf85cd300f33d7d14a06fe84"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.321.0/lightdash-cli-3.321.0-linux-x64.tar.gz"
    sha256 "0939db4eb0a23d72f7fabc8404f83fd542e039cd0c9869698e858c835cf55ddb"

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
