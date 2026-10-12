class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.572.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.572.0/lightdash-cli-2.572.0-macos-arm64.tar.gz"
      sha256 "2696e0fc07fea5340ca83f40b80a8f1db099d296d529247e46f04f772c1ee796"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.572.0/lightdash-cli-2.572.0-macos-x64.tar.gz"
      sha256 "e2ff44011a2bf49733994fd3c0815aefdb164152c9a1126b86a6d26b94958613"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.572.0/lightdash-cli-2.572.0-linux-x64.tar.gz"
    sha256 "a157300be27078768e7dbcabaf9c27d33fa19e4287b9dc0288168be74a77f2bd"

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
