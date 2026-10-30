class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.108.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.108.2/lightdash-cli-3.108.2-macos-arm64.tar.gz"
      sha256 "86fc3a2cfaf88970558ee47a65d43cd2d14877ed538ea949b4a1fc4d56262338"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.108.2/lightdash-cli-3.108.2-macos-x64.tar.gz"
      sha256 "90a0ec51b988e067f3dd8c83150bc3947cbf99f93fc0772cb24f4ad02536d0e8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.108.2/lightdash-cli-3.108.2-linux-x64.tar.gz"
    sha256 "177cd2cbdf2fb6b301ec322ea488ee77645fe317168f48a43bbca31e838c4cbe"

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
