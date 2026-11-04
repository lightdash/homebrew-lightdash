class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.144.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.144.0/lightdash-cli-3.144.0-macos-arm64.tar.gz"
      sha256 "25406d11b4dd5f37697d00f6722ec4ea034c4cd684cb3e331d1443c21af6334a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.144.0/lightdash-cli-3.144.0-macos-x64.tar.gz"
      sha256 "6268913a4b73a9cf9a85ef630fab059df3258078ba817de717964fe7f3788ba8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.144.0/lightdash-cli-3.144.0-linux-x64.tar.gz"
    sha256 "25cd0f489e206dda59f5b4ebb0a2733743770cf8ca79ac386c9a650389b6400e"

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
