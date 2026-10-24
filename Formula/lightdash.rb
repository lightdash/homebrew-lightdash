class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.2/lightdash-cli-3.53.2-macos-arm64.tar.gz"
      sha256 "8cd0536285b45428ec53b3b99ab510b637e4c2b364d55c6bef424307fbdb4bc8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.2/lightdash-cli-3.53.2-macos-x64.tar.gz"
      sha256 "a81c1f1f5157110148cc24f87fd9065cbd8149be7273ad5e0aa9f392729188ed"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.2/lightdash-cli-3.53.2-linux-x64.tar.gz"
    sha256 "d38ab7b1bdbba76f4b7bc9334700af4d9434ab20c803714ff05a64612ebcfa75"

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
