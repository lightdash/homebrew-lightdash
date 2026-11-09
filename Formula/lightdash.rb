class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.179.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.179.5/lightdash-cli-3.179.5-macos-arm64.tar.gz"
      sha256 "ed10135b0a540ae8ba31ceb542d10295a1ae10cc3ccec6fc8ddebec812309f13"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.179.5/lightdash-cli-3.179.5-macos-x64.tar.gz"
      sha256 "bd9349d8c474ed3570eee15bd8311f34a50190e496b6420062ca60c375ad8425"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.179.5/lightdash-cli-3.179.5-linux-x64.tar.gz"
    sha256 "0597c23d5206cd0d33427c8ed811c7c4409f0c9ed6cdaeac1113d358a850c69e"

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
