class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.342.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.342.0/lightdash-cli-3.342.0-macos-arm64.tar.gz"
      sha256 "61d5810e51c08bca1f7169587710bc29de6bf942320d48e218f39485e50b1fd2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.342.0/lightdash-cli-3.342.0-macos-x64.tar.gz"
      sha256 "007c3f5d8d961ede112d045f16ae20d5635eb73acaaa514113c98972f44dea23"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.342.0/lightdash-cli-3.342.0-linux-x64.tar.gz"
    sha256 "d7d3f6af5f8dfad3220447617176b4677707bbafba59ab13a22396412765449e"

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
