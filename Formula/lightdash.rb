class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.372.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.372.0/lightdash-cli-2.372.0-macos-arm64.tar.gz"
      sha256 "fe5fa30a9361ddb050c21034404b81bdcd46dfd3da60c43b89f7d6f1c62f7598"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.372.0/lightdash-cli-2.372.0-macos-x64.tar.gz"
      sha256 "87c2fb6af73f4413d6ff7bdc4e4b03ab6f9aa4d9a30f16c82fabaa03d4ee4fd1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.372.0/lightdash-cli-2.372.0-linux-x64.tar.gz"
    sha256 "5306340e3c1ecee34b49b8f126575c1099a6f55978ddd25b35b44c776ba4c70d"

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
